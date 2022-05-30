defmodule MossPigletWeb.LandingLive.Index do
  @moduledoc false
  use MossPigletWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, page_title: "Welcome")

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div class="bg-gray-900">
        <div class="relative overflow-hidden">
          <header class="relative">
          </header>
          <main>
            <div class="pt-10 bg-gray-900 sm:pt-16 lg:pt-8 lg:pb-14 lg:overflow-hidden">
              <div class="mx-auto max-w-7xl lg:px-8">
                <div class="lg:grid lg:grid-cols-2 lg:gap-8">
                  <div class="mx-auto max-w-md px-4 sm:max-w-2xl sm:px-6 sm:text-center lg:px-0 lg:text-left lg:flex lg:items-center">
                    <div class="lg:py-24">
                      <a href="https://metamorphic.app" class="inline-flex items-center text-white bg-black rounded-full p-1 pr-2 sm:text-base lg:text-sm xl:text-base hover:text-gray-200">
                        <span class="px-3 py-0.5 text-white text-xs font-semibold leading-5 uppercase tracking-wide bg-gradient-to-r from-teal-500 to-cyan-600 rounded-full">Now 🏗</span>
                        <span class="ml-4 text-sm">Visit our privacy-focused connectivity app</span>
                        <svg class="ml-2 w-5 h-5 text-gray-500" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                          <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" />
                        </svg>
                      </a>
                      <script>
                        var words = ['ship web privacy', 'ship web safety', 'build websites', 'build trust', 'build community', 'evolve ai', 'evolve business', 'deliver success', 'ship web apps'];
                        var index = 0;

                        function rotate() {
                            document.getElementById('changer').innerText = words[(index++)%(words.length)];
                        }

                        setInterval(rotate, 2000);
                      </script>
                      <h1 class="mt-4 text-4xl tracking-tight font-extrabold text-white sm:mt-5 sm:text-6xl lg:mt-6 xl:text-6xl">
                        <span class="block">A better way to</span>
                        <span id="changer" class="holder-2 pb-3 block bg-clip-text text-transparent bg-gradient-to-r from-teal-200 to-cyan-400 sm:pb-5 animate__animated animate__bounce">ship web apps</span>
                      </h1>
                      <p class="text-base text-gray-300 sm:text-xl lg:text-lg xl:text-xl">We're a software company specializing in bespoke projects. Whether you're a small business in need of a website or an entity looking for a human-focused technology solution, we can help.</p>
                      <div class="mt-10 sm:mt-12">
                        <form action="#" class="sm:max-w-xl sm:mx-auto lg:mx-0">
                          <div class="sm:flex">
                            <div class="min-w-0 flex-1">
                               <a href="mailto:hello@mosspiglet.dev" class="block text-center w-full py-3 px-4 rounded-md shadow bg-gradient-to-r from-teal-500 to-cyan-600 text-white font-medium hover:from-teal-600 hover:to-cyan-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-400 focus:ring-offset-gray-900">Send us an email</a>
                            </div>
                          </div>

                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="mt-12 -mb-16 sm:-mb-48 lg:m-0 lg:relative">
                    <div class="mx-auto max-w-md px-4 sm:max-w-2xl sm:px-6 lg:max-w-none lg:px-0">
                      <!-- Illustration taken from Lucid Illustrations: https://lucid.pixsellz.io/ -->
                      <img class="w-full lg:absolute lg:inset-y-0 lg:left-0 lg:h-full lg:w-auto lg:max-w-none" src="https://tailwindui.com/img/component-images/cloud-illustration-teal-cyan.svg" alt="Data center with cloud and avatar illustration">
                    </div>
                  </div>
                </div>
              </div>
            </div>


          </main>
          <footer class="bg-gray-900" aria-labelledby="footer-heading">
            <h2 id="footer-heading" class="sr-only">Footer</h2>
            <div class="max-w-md mx-auto pt-12 px-4 sm:max-w-7xl sm:px-6 lg:pt-16 lg:px-8">
              <div class="mt-12 border-t border-gray-200 py-8">
                <p class="text-base text-gray-400 xl:text-center">&copy; 2021 Moss Piglet Corporation. All rights reserved.</p>
              </div>
            </div>
          </footer>
        </div>
      </div>

    """
  end
end
