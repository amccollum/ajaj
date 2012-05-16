(($) ->
    $.ender
        ajaj: (options={}) ->
            options.method or= 'GET'
            options.type = 'json'
            options.headers or= {}
        
            if options.data and typeof options.data isnt 'string'
                options.headers['Content-Type'] = 'application/json'
                options.data = JSON.stringify(options.data)
            
            return $.ajax(options)

)(ender)