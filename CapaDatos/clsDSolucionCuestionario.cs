using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaNegocio;

namespace CapaDatos
{
    public class clsDSolucionCuestionario
    {
        public bool D_guardarRespuestaCuestionario(clsNSolucionCuestionario nuevaSolucion)
        {
            try
            {
                using (MERSembrarDataContext db = new MERSembrarDataContext())
                {
                    SOLUCIONCUESTIONARIO solucioncuestionario = new SOLUCIONCUESTIONARIO();
                    solucioncuestionario.IDPROCESO = nuevaSolucion.IDPROCESO;
                    solucioncuestionario.IDOBJETIVO = nuevaSolucion.IDOBJETIVO;
                    solucioncuestionario.IDINDICADOR = nuevaSolucion.IDINDICADOR;
                    solucioncuestionario.IDPREGUNTA = nuevaSolucion.IDPREGUNTA;
                    solucioncuestionario.IDPERSONA = nuevaSolucion.IDPERSONA;
                    solucioncuestionario.IDPERIODO = nuevaSolucion.IDPERIODO;
                    solucioncuestionario.FECHASOLUCIONCUESTIONARIO = nuevaSolucion.FECHASOLUCIONCUESTIONARIO.Date;
                    solucioncuestionario.TEXTOSOLUCIONCUESTIONARIO = nuevaSolucion.TEXTOSOLUCIONCUESTIONARIO;

                    db.SOLUCIONCUESTIONARIO.InsertOnSubmit(solucioncuestionario);
                    db.SubmitChanges();

                    return true;
                }
            }
            catch
            {
                return false;
            }
        }
    }
}
