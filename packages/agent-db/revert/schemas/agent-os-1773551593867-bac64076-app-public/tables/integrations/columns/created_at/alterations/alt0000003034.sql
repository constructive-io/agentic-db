-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/created_at/alterations/alt0000003034


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  ALTER COLUMN created_at DROP NOT NULL;


