using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Consulta
    {
        public string strNombreCompleto, strEmail;
        public string consulta { set; get; }
        //constructores
        public Consulta()
        {
            this.strNombreCompleto = "";
            this.strEmail = "";
        }

        #region Propiedades del objeto
        //propiedades

        public string nombreCompleto
        {
            set
            {
                this.strNombreCompleto = value.Trim();
            }
            get
            {
                return this.strNombreCompleto;
            }
        }

        public string email
        {
            set
            {
                this.strEmail = value.Trim();
            }
            get
            {
                return this.strEmail;
            }
        }

        #endregion
    }
}
