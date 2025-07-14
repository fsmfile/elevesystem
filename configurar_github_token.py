#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para configurar o token do GitHub para o sistema EleveSystem
"""

import os
import sys
import tkinter as tk
from tkinter import ttk, messagebox, simpledialog
from pathlib import Path

def verificar_token_atual():
    """Verifica se já existe um token configurado"""
    token = os.getenv("GITHUB_TOKEN")
    if token:
        return f"Token encontrado: {token[:8]}...{token[-4:]}" if len(token) > 12 else "Token encontrado"
    return "Nenhum token configurado"

def configurar_token_usuario():
    """Configura o token através de variável de ambiente do usuário"""
    token = simpledialog.askstring(
        "Token do GitHub",
        "Digite seu token do GitHub:\n\n"
        "Para criar um token:\n"
        "1. Acesse github.com/settings/tokens\n"
        "2. Clique em 'Generate new token (classic)'\n"
        "3. Selecione 'repo' permissions\n"
        "4. Copie o token gerado",
        show='*'
    )
    
    if not token:
        return False
        
    try:
        # Configura a variável de ambiente do usuário no Windows
        import subprocess
        cmd = f'setx GITHUB_TOKEN "{token}"'
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        
        if result.returncode == 0:
            messagebox.showinfo(
                "Sucesso",
                "Token configurado com sucesso!\n\n"
                "Reinicie o aplicativo para que as mudanças tenham efeito."
            )
            return True
        else:
            messagebox.showerror("Erro", f"Erro ao configurar token:\n{result.stderr}")
            return False
            
    except Exception as e:
        messagebox.showerror("Erro", f"Erro ao configurar token:\n{str(e)}")
        return False

def remover_token():
    """Remove o token configurado"""
    resposta = messagebox.askyesno(
        "Confirmar",
        "Tem certeza que deseja remover o token do GitHub?"
    )
    
    if resposta:
        try:
            import subprocess
            cmd = 'setx GITHUB_TOKEN ""'
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.returncode == 0:
                messagebox.showinfo("Sucesso", "Token removido com sucesso!")
                return True
            else:
                messagebox.showerror("Erro", f"Erro ao remover token:\n{result.stderr}")
                return False
                
        except Exception as e:
            messagebox.showerror("Erro", f"Erro ao remover token:\n{str(e)}")
            return False

def criar_gui():
    """Cria a interface gráfica"""
    root = tk.Tk()
    root.title("Configurador de Token GitHub - EleveSystem")
    root.geometry("500x400")
    root.resizable(False, False)
    
    # Frame principal
    main_frame = ttk.Frame(root, padding="20")
    main_frame.pack(fill='both', expand=True)
    
    # Título
    title_label = ttk.Label(
        main_frame, 
        text="Configuração do Token GitHub",
        font=('Arial', 14, 'bold')
    )
    title_label.pack(pady=(0, 20))
    
    # Status atual
    status_frame = ttk.LabelFrame(main_frame, text="Status Atual", padding="10")
    status_frame.pack(fill='x', pady=(0, 20))
    
    status_label = ttk.Label(status_frame, text=verificar_token_atual())
    status_label.pack()
    
    # Explicação
    explicacao_frame = ttk.LabelFrame(main_frame, text="Para que serve?", padding="10")
    explicacao_frame.pack(fill='x', pady=(0, 20))
    
    explicacao_text = (
        "O token do GitHub permite que o sistema salve automaticamente\n"
        "os arquivos de configuração de novos clientes diretamente no\n"
        "repositório remoto quando você usar o modo desenvolvedor.\n\n"
        "Sem o token, os arquivos serão salvos apenas localmente."
    )
    
    explicacao_label = ttk.Label(explicacao_frame, text=explicacao_text, justify='left')
    explicacao_label.pack()
    
    # Botões
    botoes_frame = ttk.Frame(main_frame)
    botoes_frame.pack(fill='x', pady=(20, 0))
    
    def atualizar_status():
        status_label.config(text=verificar_token_atual())
    
    def configurar_e_atualizar():
        if configurar_token_usuario():
            atualizar_status()
    
    def remover_e_atualizar():
        if remover_token():
            atualizar_status()
    
    ttk.Button(
        botoes_frame, 
        text="Configurar Token",
        command=configurar_e_atualizar
    ).pack(side='left', padx=(0, 10))
    
    ttk.Button(
        botoes_frame,
        text="Remover Token",
        command=remover_e_atualizar
    ).pack(side='left', padx=(0, 10))
    
    ttk.Button(
        botoes_frame,
        text="Atualizar Status",
        command=atualizar_status
    ).pack(side='left', padx=(0, 10))
    
    ttk.Button(
        botoes_frame,
        text="Fechar",
        command=root.destroy
    ).pack(side='right')
    
    # Instruções detalhadas
    instrucoes_frame = ttk.LabelFrame(main_frame, text="Como obter um token", padding="10")
    instrucoes_frame.pack(fill='both', expand=True, pady=(20, 0))
    
    instrucoes_text = (
        "1. Acesse: https://github.com/settings/tokens\n"
        "2. Clique em 'Generate new token (classic)'\n"
        "3. Digite uma descrição (ex: 'EleveSystem')\n"
        "4. Selecione as permissões 'repo'\n"
        "5. Clique em 'Generate token'\n"
        "6. Copie o token gerado (ele só aparece uma vez!)\n"
        "7. Cole aqui usando o botão 'Configurar Token'"
    )
    
    instrucoes_label = ttk.Label(instrucoes_frame, text=instrucoes_text, justify='left')
    instrucoes_label.pack(anchor='w')
    
    root.mainloop()

if __name__ == "__main__":
    criar_gui() 