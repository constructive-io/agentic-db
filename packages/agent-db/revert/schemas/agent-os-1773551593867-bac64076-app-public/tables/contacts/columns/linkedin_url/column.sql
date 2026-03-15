-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/linkedin_url/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN linkedin_url RESTRICT;


