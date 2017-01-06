import 'package:angular2/core.dart';
import 'dart:async';

import 'package:dart_app/Class/Task.dart';
import 'package:dart_app/Mocks/mockTasks.dart';

@Injectable()
class TaskService
{
  bool error;

  DateTime date = new DateTime.now();

  Future<List<Task>> getTasks() async => mockTasks;


  /**
     addTask : Rajoute une tache a la liste "mockTask".
     Grace à un input et un bouton de validation, la fonction récupere une saisie utilisateur.
     Si la saisie de l'utilisateur (taskTitle) est similaire à une donnée (task.title de la liste tasks) déjà saisie et stockée dans la liste,
     Alors une erreur est constatée donc "error" est vrai.
     A l'inverse si aucune données n'est similaire à la saisie,
     Alors il n'y à pas d'erreur donc "error" est faux.
     Si erreur est faux ou equivalent à null, rajoute la tache à la liste.
   */
  addTask(String taskTitle)
  {
    mockTasks.forEach((task) => taskTitle == task.title ? error = true : error = false);
    if(error == false || error == null)
    {
      mockTasks.add(new Task(1, taskTitle, 'CURRENT_USER'));
    }
  }

  /**
      removeTask : retire une données à la liste "mockTask".
      Grace à un evenement click, la fonction récupere un objet Task et le retire de la liste.
      Si la donnée est retirée alors il ni à aucune erreur,
      donc "error" est faux,
      Si la donnée n'est pas retirée alors il y à une erreur
      donc "error" est vrai.
   */
  removeTask(Task task)
  {
    mockTasks.remove(task) ? error = false : error = true;
  }

  /**
    updateTask : modifie le titre et la rajoute une date de modification à une donnée existante
    Grace à un input et un bouton de validation recupére une saisie est un objet qui lui est associée et modifie les propiétés.
    Si la saisie est inférieur ou égal à 0 alors une erreur est constatée donc "error" est vrai,
    Si la saisie est strictement supérieur à 0 alors il ni à aucune erreur donc "error" est faux.
    Si "error" est faux donc modifie les propiétés.
   */
  updateTask(Task task, String newTitle)
  {
      newTitle.length <= 0 ? error = true : error = false;
      if(!error)
      {
        task.title = newTitle;
        task.modifyDate = date;
      }
  }

  /**
    removeAll : retire tout les éléments sélectionnés.
    Via des checkboxes modifie la propriété "checked" d'une données.
    Par défaut la propiété "checked" est "false",
    Si la checkeboxes est coché alors la propriété "checked" est vrai.
    Supprime toutes les données dont la propiété "checked" est vrai,
    Verifie si toutes les données on la propiété "checked" à "false",
    Si une ou plusieures données on un propiété "checked" est vrai,
    Alors une erreur est constatée donc "error" est vrai,
    Dans le cas contraire, aucun erreur n'est constatée donc "error" est faux.
   */
  removeAll()
  {
    mockTasks.removeWhere((task) => task.checked);
    mockTasks.forEach((task) => !task.checked ? error = false : error = true);
  }

  /**
    onError : retourne la variable "error" qui est soi vrai ou fausse.
   */
  onError()
  {
    return error;
  }
}