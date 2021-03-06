{include file= 'templates/header.tpl'}

<div class="bg-white shadow overflow-hidden sm:rounded-lg">
    <div class="px-4 py-5 sm:px-6">
        <h3 class="text-lg leading-6 font-medium text-gray-900">
            Detalles del producto {$product->id_product}
        </h3>
    </div>
    <div class="border-t border-gray-200 px-4 py-5 sm:p-0">
        <dl class="sm:divide-y sm:divide-gray-200">
            <div class="py-4 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt class="text-sm font-medium text-gray-500">
                    Color
                </dt>
                <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    {$product->color}
                </dd>
            </div>
            <div class="py-4 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt class="text-sm font-medium text-gray-500">
                    Talle
                </dt>
                <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    {$product->size}
                </dd>
            </div>
            <div class="py-4 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt class="text-sm font-medium text-gray-500">
                    Stock
                </dt>
                <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    {$product->stock}
                </dd>
            </div>
            <div class="py-4 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt class="text-sm font-medium text-gray-500">
                    Precio
                </dt>
                <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    ${$product->price}
                </dd>
            </div>
        </dl>
    </div>
</div>

<div class="lg:grid lg:grid-cols-12 lg:gap-x-5">
    <div class="space-y-6 sm:px-6 lg:px-0 lg:col-span-9">
        <div class="px-4 py-3 text-left sm:px-6">
            <a href="home/"
                class="bg-indigo-600 border border-transparent rounded-md shadow-sm py-2 px-4 inline-flex justify-center text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                Volver al home
            </a>
        </div>
    </div>
</div>

<h1 id="form-comment"  data-idProducto="{$product->id_product}"></h1>
<h1 id="user" data-idUsuario="{$idUser}"></h1>
{if $idUser}
    <div class="bg-white shadow sm:rounded-lg">
    <div class=" space-y-6 sm:px-6 lg:px-0 lg:col-span-9">
        <form id="form-comment"  data-idProducto="{$product->id_product}" method="POST">
        <h1 id="user" data-idUsuario="{$idUser}"></h1>
            <div class="shadow sm:rounded-md sm:overflow-hidden">
                <div class="bg-white py-6 px-4 space-y-6 sm:p-6">
                    <div>
                        <h3 class="text-lg leading-6 font-medium text-gray-900">Comentar sobre el producto</h3>
                    </div>
                    <div class="col-span-6 sm:col-span-3">
                        <input type="text" name="content" id="content" placeholder="Ingrese comentario sobre el producto"
                            class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm py-2 px-3 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                    </div>
                    <div class="grid grid-cols-6 gap-6">
                        <div class="col-span-6 sm:col-span-3">
                            <select name="score" id="score"
                                class="mt-1 block w-full bg-white border border-gray-300 rounded-md shadow-sm py-2 px-3 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                                <option value="">Indique el puntaje del producto</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">
            <input type="button" id="btn_comment" value="Comentar" class="bg-indigo-600 border border-transparent rounded-md shadow-sm py-2 px-4 inline-flex justify-center text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
            </div>
        </form>
    </div>
</div>
{/if}


    

       


<div id="app" data-isAdmin="{$isAdmin}">
    {include file='templates/vue/commentsList.tpl'}
</div>


<script src="Js/comment.js"></script>

{include file= 'templates/footer.tpl'}