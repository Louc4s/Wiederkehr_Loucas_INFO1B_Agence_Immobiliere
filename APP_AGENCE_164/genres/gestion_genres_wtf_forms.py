"""
    Fichier : gestion_genres_wtf_forms.py
    Auteur : OM 2021.03.22
    Gestion des formulaires avec WTF
"""
from flask_wtf import FlaskForm
from wtforms import IntegerField, StringField, DecimalField
from wtforms import SubmitField
from wtforms.validators import Length, InputRequired, DataRequired
from wtforms.validators import Regexp


from wtforms import IntegerField

class FormWTFAjouterGenres(FlaskForm):
    fk_client = IntegerField("ID du client", validators=[InputRequired("Valeur obligatoire")])
    nom_genre_regexp = "^[A-Za-z0-9\-]+$"
    nom_genre_wtf = StringField("Description du bien", validators=[Length(min=2, max=20, message="min 2 max 20"),
                                                               Regexp(nom_genre_regexp,
                                                                      message="Pas de chiffres, de caractères "
                                                                              "spéciaux, "
                                                                              "d'espace à double, de double "
                                                                              "apostrophe, de double trait union")
                                                               ])
    nb_piece = DecimalField("Nombre de pièces", validators=[InputRequired("Valeur obligatoire")])
    prix = StringField("Prix", validators=[InputRequired("Valeur obligatoire")])
    submit = SubmitField("Enregistrer le bien")

class FormWTFUpdateGenre(FlaskForm):
    """
        Dans le formulaire "genre_update_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    nom_genre_update_regexp = "^[A-Za-z0-9\-]+$"
    nom_genre_wtf = StringField("Description du bien", validators=[Length(min=2, max=20, message="min 2 max 20"),
                                                                   Regexp(nom_genre_update_regexp,
                                                                          message="Pas de chiffres, de caractères "
                                                                                  "spéciaux, "
                                                                                  "d'espace à double, de double "
                                                                                  "apostrophe, de double trait union")
                                                                   ])
    fk_client = IntegerField("ID du client", validators=[InputRequired("Valeur obligatoire")])
    nb_piece = IntegerField("Nombre de pièces", validators=[InputRequired("Valeur obligatoire")])
    prix = DecimalField("Prix", validators=[InputRequired("Valeur obligatoire")])
    submit = SubmitField("Update bien")


class FormWTFDeleteGenre(FlaskForm):
    """
        Dans le formulaire "genre_delete_wtf.html"

        nom_genre_delete_wtf : Champ qui reçoit la valeur du genre, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "genre".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_genre".
    """
    nom_genre_delete_wtf = StringField("Effacer ce genre")
    submit_btn_del = SubmitField("Effacer genre")
    submit_btn_conf_del = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")
