-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/github_username/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN github_username RESTRICT;


