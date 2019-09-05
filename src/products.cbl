IDENTIFICATION DIVISION.
PROGRAM-ID.  DEMO.
PROCEDURE DIVISION.
DisplayPrompt.
  DISPLAY '['
          '{ "name": "Emmentaler", "brand": "Eirini", "price": "8" },'
          '{ "name": "Camembert", "brand": "Cloud Foundry", "price": "18" },'
          '{ "name": "Kanterkaas", "brand": "Kubernetes", "price": "7" },'
          '{ "name": "Red Leicester", "brand": "RedHat", "price": "6" },'
          '{ "name": "Olivet Bleu", "brand": "OpenShift", "price": "10" },'
          '{ "name": "Caciobarricato", "brand": "Childers", "price": "14" }'
          ']'
  STOP RUN.
