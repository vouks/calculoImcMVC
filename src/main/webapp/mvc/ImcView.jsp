<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IMC com JSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>
  <body>
    <div class="col-xs-12">
        <div class="modal-dialog" style="margin-bottom:0">
            <div class="modal-content">
                <div class="panel-heading">
                    <h1 style="text-align:center">Calcule seu IMC!</h1>
                    <hr/>
                </div>
                <div class="panel-body">
                <form name="formulario" class="form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <div class="input-group">
                                <input class="form-control" placeholder="Digite seu peso em kg" name="peso" type="number" autofocus="" min="0">
                                <span class="input-group-addon">KG</span>
                            </div>
                            <br />
                            <div class="input-group">
                                <input class="form-control" placeholder="Digite sua altura em metros" name="altura" type="number" step=".01" min="0">
                                <span class="input-group-addon">M</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="radio-inline">
                                <label class="radio-inline"><input name="sexo" type="radio" value="m"><b>Masculino</b></label>
                            </div>
                            <div class="radio-inline">
                                <label class="radio-inline"><input name="sexo" type="radio" value="f"><b>Feminino</b></label>
                            </div>
                        </div>
                        <div class="col-xs-2 col-xs-offset-5">
                        <button class="btn btn-sm btn-primary">Calcular</button>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>

        <div class="alert alert-info" role="alert" style="margin-top:45px">${resultado}</div>
    </div>
    </div>
  </body>
</html>