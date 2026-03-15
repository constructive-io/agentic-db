-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/status/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  DROP COLUMN status RESTRICT;


