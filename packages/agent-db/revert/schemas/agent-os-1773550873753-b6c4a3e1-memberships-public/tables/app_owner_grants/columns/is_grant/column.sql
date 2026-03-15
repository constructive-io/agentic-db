-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_owner_grants 
  DROP COLUMN is_grant RESTRICT;


