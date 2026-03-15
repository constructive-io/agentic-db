-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants 
  DROP COLUMN updated_at RESTRICT;


