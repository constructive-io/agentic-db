-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/credentials_ref/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  DROP COLUMN credentials_ref RESTRICT;


