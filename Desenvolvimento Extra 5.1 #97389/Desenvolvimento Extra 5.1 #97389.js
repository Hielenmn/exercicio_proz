// Capturando os elementos do DOM
const titulo = document.getElementById('titulo');
const listaNaoOrdenada = document.querySelector('ul');
const link = document.getElementById('link');
const listaOrdenada = document.getElementById('lista-ordenada');

// Adicionando conteúdo aos elementos
titulo.innerText = 'Título da Página';
link.innerText = 'Link para Proz Educação';

// Adicionando itens à lista não ordenada usando innerHTML
listaNaoOrdenada.innerHTML = '<li>Item 1</li><li>Item 2</li><li>Item 3</li>';

// Adicionando itens à lista ordenada com links usando innerHTML
listaOrdenada.innerHTML = '<li><a href="https://site1.com">Link 1</a></li>' +
                          '<li><a href="https://site2.com">Link 2</a></li>' +
                          '<li><a href="https://site3.com">Link 3</a></li>';
