"""
    Fichier : gestion_genres_wtf_forms.py
    Auteur : OM 2021.03.22
    Gestion des formulaires avec WTF
"""
from flask_wtf import FlaskForm
from wtforms import IntegerField, StringField, DecimalField
from wtforms import SubmitField
from wtforms.validators import Length, InputRequired
from wtforms.validators import Regexp

class FormWTFAjouterGenres(FlaskForm):
    intitule_type = StringField("Type", validators=[InputRequired("Valeur obligatoire")])
    submit = SubmitField("Enregistrer type")  # Mettez à jour le nom du bouton de soumission

class FormWTFUpdateBiens(FlaskForm):
    """
    Dans le formulaire "genre_update_wtf.html" on impose que le champ soit rempli.
    Définition d'un "bouton" submit avec un libellé personnalisé.
    """

    nom_genre_regexp = "^[A-Za-z0-9\-]+$"

    intitule_type_update_wtf = StringField("Type", validators=[InputRequired("Champ obligatoire")])
    date_ins_type_wtf = StringField("Date d'insertion", validators=[Length(min=2, max=20, message="min 2 max 20"),
                                                               Regexp(nom_genre_regexp,
                                                                      message="Pas de chiffres, de caractères "
                                                                              "spéciaux, "
                                                                              "d'espace à double, de double "
                                                                              "apostrophe, de double trait union")
                                                               ])
    submit = SubmitField("Update type")






class FormWTFDeleteGenre(FlaskForm):
    """
        Dans le formulaire "genre_delete_wtf.html"

        nom_genre_delete_wtf : Champ qui reçoit la valeur du genre, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "genre".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_genre".
    """
    nom_genre_delete_wtf = StringField("Effacer ce type")
    submit_btn_del = SubmitField("Effacer type")
    submit_btn_conf_del = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")
