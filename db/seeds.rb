# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


districts = District.create([
            {name:'Cercado de Lima'},
            {name:'Lince'},
            {name:'Jesús Maria'},
            {name:'Magdalena del Mar'},
            {name:'Ancon'},
            {name:'Villa Maria del triunfo'},
            {name:'Cercado de Lima'},
            {name:'Miraflores'}
            ])
            
documentos = Entity.create(Description: 'Documento de Identidad')
            Parameter.create([
                {text:'DNI', value: 1, entity:documentos},
                {text:'Pasaporte', value: 2, entity:documentos}
            ])

sexo = Entity.create(Description: 'Sexo')
            Parameter.create([
                {text:'Masculino', value: 1, entity:sexo},
                {text:'Femenino', value: 2, entity:sexo}
            ])



[1,2,3,4,5,6,7,8].each do |o|
  [1,2,3,4,5,6,7,8].each do |d|
    Rate.create({price: [*10..99].sample , origin_id: o, destination_id: d })
  end
end