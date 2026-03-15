-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/constraints/app_admin_grants_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_admin_grants 
  DROP CONSTRAINT app_admin_grants_actor_id_fkey;


