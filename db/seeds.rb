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
            
status_reserva = Entity.create(Description: 'Estado Reserva')
            Parameter.create([
                {text:'Pendiente', value: 1, entity:status_reserva},
                {text:'Reservado', value: 2, entity:status_reserva},
                {text:'Calificado', value: 3, entity:status_reserva}
            ])

marcas_autos = Entity.create(Description: 'Marca de Autos')
            Parameter.create([
                {text:'Toyota', value: 1, entity:marcas_autos},
                {text:'Nissan', value: 2, entity:marcas_autos},
                {text:'VolksWagen', value: 3, entity:marcas_autos}
            ])
estado_autos = Entity.create(Description: 'Modalidad de Autos')
            Parameter.create([
                {text:'De la Empresa', value: 1, entity:estado_autos},
                {text:'Del Chofer', value: 2, entity:estado_autos},
                {text:'Alquiler', value: 3, entity:estado_autos}
            ])



[1,2,3,4,5,6,7,8].each do |o|
  [1,2,3,4,5,6,7,8].each do |d|
    Rate.create({price: [*10..99].sample , origin_id: o, destination_id: d })
  end
end

