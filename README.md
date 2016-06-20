# Cedula
`cedula` es una gema que permite verificar la validéz de una cedula de identidad chilena

## Instalación
```shell
gem install cedula
```
## Uso
Desde ruby luego de requerir la gema, se puede verificar la validéz de una cedula ingresando el **rut** en el consutructor de la clase y pasando el **Numero de Documento** de la cedula como parámetro a la funcion `valid?`
```ruby
Cedula.new('11111111-1').valid? '111111111'
# => false
