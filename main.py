import streamlit as st

# Allgemeine Seiten-Konfigurationen
st.set_page_config("Test | App")

# Title und Caption
col1, col2 = st.columns([1, 9])
col1.write("")
col2.title("Netcom BW Wissensdatenbank")
st.caption("Durchsuche interne NetCom-Dokumente, um Antworten auf deine Fragen zu finden.")
st.divider()