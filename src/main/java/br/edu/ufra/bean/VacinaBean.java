/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ufra.bean;

import br.edu.ufra.entidade.Animal;
import br.edu.ufra.entidade.Vacina;
import br.edu.ufra.rn.AnimalRN;
import br.edu.ufra.rn.VacinaRN;
import br.edu.ufra.util.UtilBean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

/**
 *
 * @author Fabio
 */
@ManagedBean
@ViewScoped
public class VacinaBean {

    private Animal animal = new Animal();
    private Vacina vacina = new Vacina();

    private final VacinaRN VACINA_RN = new VacinaRN();
    private final AnimalRN ANIMAL_RN = new AnimalRN();

    /**
     * Creates a new instance of VacinaBean
     */
    public VacinaBean() {
    }

    @PostConstruct
    public void init() {
        String animalID = UtilBean.obterValor("animal");
        if (animalID != null) {
            try {
                int id = Integer.parseInt(animalID);
                animal = ANIMAL_RN.obter(id);
                if (animal == null) {
                    animal = new Animal();
                    UtilBean.criarMensagemDeAviso("Não foi recuperar o animal. Código inválido.");
                }
            } catch (Exception e) {
                animal = new Animal();
                UtilBean.criarMensagemDeErro("Não foi recuperar o animal");
            }
        }
    }

    public Animal getAnimal() {
        return animal;
    }

    public void setAnimal(Animal animal) {
        this.animal = animal;
    }

    public Vacina getVacina() {
        return vacina;
    }

    public void setVacina(Vacina vacina) {
        this.vacina = vacina;
    }

    public void adicionar() {
        if (vacina != null) {
            vacina.setAnimal(animal);
            if (VACINA_RN.salvar(vacina)) {
                UtilBean.criarMensagemDeInformacao("Vacina registrada");
                setAnimal(ANIMAL_RN.obter(animal.getId())); //Atualizando o animal
                vacina = new Vacina();
            } else {
                UtilBean.criarMensagemDeErro("Não foi possível registrar a vacina");
            }
        }
    }

    public void excluir() {
        if (vacina != null) {
            if (VACINA_RN.excluir(vacina)) {
                UtilBean.criarMensagemDeInformacao("Vacina excluída");
                setAnimal(ANIMAL_RN.obter(animal.getId())); //Atualizando o animal
                vacina = new Vacina();
            } else {
                UtilBean.criarMensagemDeErro("Não foi possível excluir a vacina");
            }
        }
    }

}
