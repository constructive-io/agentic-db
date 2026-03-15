-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/github_username/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  DROP COLUMN github_username RESTRICT;


