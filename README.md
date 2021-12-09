# antonio_soto@yahoo.com
# Implemente las siguientes validaciones:
# 1.Requerir el nombre y la descripción para el blog.
validates: name, :description, presence: true
# 2.Requerir el título y el contenido de las publicaciones (post). El título tiene que ser de al menos 7 caracteres de longitud.
validates:title, :content, presence: true, length: {minimum: 7}
# 3.Requerir el autor y el mensaje para los mensajes. El mensaje de tener al menos 15 caracteres de longitud.
validates:author, :message, presence: true 
validates :message, length: {minimum: 15}

# Usando la consola:
# 1 Cree 5 nuevos blogs.
Blog.create(name:"Historia Blog", description:"Amantes de los hechos")
Blog.create(name:"Viajes Blog", description:"Para viajeros")
Blog.create(name:"Gato Blog", description:"Para amigos mininos")
Blog.create(name:"Perro Blog", description:"Para amigos perrunos")
Blog.create(name:"Super Blog", description:"Para Gente Super"
# 2 Cree varias publicaciones para cada blog.
# 3 Cree varios mensajes para la primera publicación.
Post.create(title: "Vida Super", content: "La vida es bella", blog: Blog.find(1))
Post.create(title: "Soy suficiente", content: "La vida te da todo", blog: Blog.find(1))
Post.create(title: "Francia", content: "Conoce Francia", blog: Blog.find(2))
Post.create(title: "Australia", content: "Aqui Australia", blog: Blog.find(2))
Post.create(title: "Edad Media", content: "Conoce la Edad Media", blog: Blog.find(5))
Post.create(title: "Perro Feliz", content: "Juega con tu perro", blog: Blog.find(4))
Post.create(title: "Alimenta a tu gato", content: "Comidas para gatos", blog: Blog.find(3))
# 4 Obtener todas las publicaciones para el primer blog.
Blog.first.posts
# 5 Obtener todas las publicaciones para el último blog (ordenadas por titulo en orden descendiente).
Blog.last.posts.order(title: :desc)
# 6 Actualizar el título de la primera publicación.
Post.first.update(title: "Super Vida")
# 7 Eliminar la tercera publicación (haga que el modelo borre automáticamente todos los mensajes asociados con la tercera publicación cuando la elimines).
Post.find(3).destroy
# 8 Obtener todos los blog.
Blog.all
# 9 Obtener todos los blog con id menor a 5.
Blog.where("id < 5")


