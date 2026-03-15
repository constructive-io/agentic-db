-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants 
  DROP COLUMN actor_id RESTRICT;


