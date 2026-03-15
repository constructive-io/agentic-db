-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".project_contacts 
  DROP COLUMN entity_id RESTRICT;


