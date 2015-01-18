/*
The MIT License (MIT)

Copyright (c) 2008 Kleber Maia de Andrade

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/   
package iobjects.xml.ui;

import java.sql.*;
import java.util.*;

import iobjects.xml.sql.*;

/**
 * Representa uma lista arquivos de fluxogramas.
 */
public class FlowChartFiles {

  private Vector vectorNames          = new Vector();
  private Vector vectorFlowChartFiles = new Vector();

  /**
   * Construtor padr�o.
   */
  public FlowChartFiles() {
  }

  /**
   * Adiciona o FlowChartFile especificado � lista.
   * @param flowChartFile FlowChartFile para adicionar � lista.
   * @param flowChartName Nome da conex�o para futuras refer�ncias.
   * @return Retorna true em caso de sucesso.
   */
  public boolean add(FlowChartFile flowChartFile, String flowChartName) {
    return vectorFlowChartFiles.add(flowChartFile) && vectorNames.add(flowChartName);
  }

  /**
   * Remove todos os FlowChartFile�s da lista.
   */
  public void clear() {
    vectorFlowChartFiles.clear();
    vectorNames.clear();
  }

  /**
   * Retorna true se existir um FlowChartFile com o nome especificado.
   * @param name flowChartName do FlowChart que se deseja localizar.
   * @return Retorna true se existir um FlowChart com o nome especificado.
   */
  public boolean contains(String name) {
    return indexOf(name) >= 0;
  }

  public void finalize() {
    vectorNames.clear();
    vectorFlowChartFiles.clear();
    vectorFlowChartFiles = null;
    vectorNames = null;
  }

  /**
   * Retorna o FlowChart na posi��o indicada por index.
   * @param index �ndice do FlowChart que se dejesa retornar.
   * @return Retorna o FlowChart na posi��o indicada por index.
   */
  public FlowChartFile get(int index) {
    return (FlowChartFile)vectorFlowChartFiles.get(index);
  }

  /**
   * Retorna o nome da conex�o na posi��o indicada por index.
   * @param index �ndice do nome da conex�o que se dejesa retornar.
   * @return Retorna o nome da conex�o na posi��o indicada por index.
   */
  public String getName(int index) {
    return (String)vectorNames.get(index);
  }

  /**
   * Retorna o FlowChartFile com o nome especificado.
   * @param name Nome do FlowChartFile que se deseja localizar, desprezando
   *             mai�sculas e min�sculas.
   * @return Retorna o FlowChartFile com o nome especificado.
   */
  public FlowChartFile get(String name) {
    int index = indexOf(name);
    if (index >= 0)
      return (FlowChartFile)vectorFlowChartFiles.get(index);
    else
      return null;
  }

  /**
   * Retorna o �ndice do FlowChartFile com o nome especificado.
   * @param name Nome do FlowChartFile que se deseja localizar,
   *                       desprezando letras mai�sculas e min�sculas.
   * @return Retorna o �ndice do FlowChartFile com o nome especificado.
   */
  public int indexOf(String name) {
    for (int i=0; i<size(); i++) {
      if (((String)vectorNames.elementAt(i)).compareToIgnoreCase(name) == 0)
        return i;
    } // for
    return -1;
  }

  /**
   * Remove o FlowChartFile na posi��o indicada por index.
   * @param index Posi��o do FlowChartFile para remover.
   */
  public void remove(int index) {
    vectorFlowChartFiles.remove(index);
    vectorNames.remove(index);
  }

  /**
   * Retorna a quantidade de FlowChart�s existentes na lista.
   * @return Retorna a quantidade de FlowChart�s existentes na lista.
   */
  public int size() {
    return vectorFlowChartFiles.size();
  }

}
