# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

orwell = Author.create!(first_name: 'George', last_name: 'Orwell')
o = Book.create(
  title: '1984',
  synopsis: "Dans une dystopie placée sous un contrôle étatique totalitaire, Winston Smith, un employé du ministère de la Vérité, falsifie l'histoire pour ne pas compromettre le pouvoir qui se serait trompé dans le passé. Dans une société où les sentiments humains ont été éliminés, le jeune homme cherche l'amour et la liberté. Une nouvelle traduction du roman d'anticipation. Edition illustrée.",
  publication_date: '1949-06-08',
  author: orwell
)
o.genres << Genre.create!(label: 'Science Fiction')

tolkien = Author.create(first_name: 'J. R. R.', last_name: 'Tolkien')
fellow = Book.create(
  title: 'The Lord of The Rings, The Fellowship of the Ring',
  synopsis: "Depuis sa publication en 1954-1955, le récit des aventures de Frodo et de ses compagnons, traversant la Terre du Milieu au péril de leur vie pour détruire l'Anneau forgé par Sauron, a enchanté des dizaines de millions de lecteurs, de tous les âges.",
  publication_date: '1954-07-29',
  author: tolkien
)

fellow.genres << Genre.create!(label: 'Fantasy')
