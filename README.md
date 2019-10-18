
SignUp user

Post localhost:3000/users

{
	"user": {
		"email": "alan@gmail.com",
		"password": "tomate123",
		"adm": "true" 
	}
}

*adm:true -> crud integral sobre todas as entidades
*adm:false -> cria e visualiza empréstimos; visualiza livros

Get user token (JWT)

Post localhost:3000/user_token
{
	"auth": {
		"email": "alan@gmail.com",
		"password": "tomate123"
	}
}

APIs 

---------------------------------------------------
Book

Get index -> localhost:3000/books

Post -> localhost:3000/books

{"title": "livro exemplo"}

Get show, Delete->  localhost:3000/books/1

Patch ->  localhost:3000/books/1

{"title": "livro exemplo modificado" }

-------------------------------------------------------

Booklet: Get show e index, Post, Patch e delete

------------------------------------------------------

User:  Get show e index, Post, Patch e delete


