@if (session()->has('success'))

<div x-data="{ show: true}"
    x-init="setTimeout(() => show = false, 4000)"
    x-show="show"
    class="bg-blue-500 bottom-0 bottom-3 fixed px-4 py-2 right-0 rounded-xl text-sm text-white">
    <p >{{ session('success') }}</p>
</div>
@endif