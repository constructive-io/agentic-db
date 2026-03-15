-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_companies/columns/entity_id/alterations/alt0000001016


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_companies 
  ALTER COLUMN entity_id DROP NOT NULL;


