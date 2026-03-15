-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/actor_id/alterations/alt0000000156


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


