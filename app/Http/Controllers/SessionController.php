<?php

namespace App\Http\Controllers;

use Dotenv\Exception\ValidationException;
use Illuminate\Http\Request;


class SessionController extends Controller
{

    //
    public function destroy()
    {
        // ddd('log the user out');
        auth()->logout();

        return redirect('/')->with('success', 'Goodbye!');
    }

    public function store()
    {
        // validate the request
        $attributes = request()->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);
        // attempt to authenticate and log in the user
        // based on the provided credentials
        if (! auth()->attempt($attributes))
        {
            // auth failed
            return back()
            ->withInput()
            ->withErrors(['email' => 'Your provided credentials could not be verified.']);

            //other option to throw an error message
            // throw ValidationException::withMessages([
            //     'email' => 'Your provided credentials could not be verified.'
            // ]);
        }

        session()->regenerate();
        // Generate new session id
        // redirect with a success flass message
        return redirect('/')->with('success', 'Welcome Back!');
    }

    public function create()
    {
        return view('sessions.create');
    }
}
