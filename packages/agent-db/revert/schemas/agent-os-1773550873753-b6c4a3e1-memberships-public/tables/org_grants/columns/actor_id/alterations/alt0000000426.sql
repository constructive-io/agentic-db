-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_grants/columns/actor_id/alterations/alt0000000426


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


