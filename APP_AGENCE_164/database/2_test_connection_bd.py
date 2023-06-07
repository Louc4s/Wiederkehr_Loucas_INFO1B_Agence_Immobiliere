"""Démonstration d'envoi d'une requête SQL à la BD
Fichier : 2_test_connection_bd.py
Auteur : OM 2023.03.21
"""

from APP_AGENCE_164.database.database_tools import DBconnection

try:
    """
        Une seule requête pour montrer la récupération des données de la BD en MySql.
    """
    strsql_genres_afficher = """SELECT id_biens, fk_client, description_bien, nb_piece, prix FROM t_biens ORDER BY id_biens ASC"""

    with DBconnection() as db:
        db.execute(strsql_genres_afficher)
        result = db.fetchall()
        print("data_genres ", result, " Type : ", type(result))


except Exception as erreur:
    # print(f"2547821146 Connection à la BD Impossible ! {type(erreur)} args {erreur.args}")
    print(f"2547821146 Test connection BD !"
          f"{__name__,erreur} , "
          f"{repr(erreur)}, "
          f"{type(erreur)}")