<x-layout>
    <section class="px-6 py-8">
        <main class="max-w-lg mx-auto mt-10 bg-gray-300 border border-gray-200 p-6 rounded-xl">
            <h1 class="text-center font-bold text-xl">Register!</h1>
            <form method="Post" action="/register" class="mt-10">
                @csrf
                <x-form.input name="name" type="name" autocomplete="name"/>
                <x-form.input name="username" type="username" autocomplete="username"/>
                <x-form.input name="email" type="email" autocomplete="email"/>
                <x-form.input name="password" type="password" autocomplete="new-password"/>
                <x-form.button>Register</x-form.button>
            </form>
        </main>
    </section>
</x-layout>