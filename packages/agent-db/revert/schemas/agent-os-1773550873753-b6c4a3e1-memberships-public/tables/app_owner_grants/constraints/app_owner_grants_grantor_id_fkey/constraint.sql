-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/constraints/app_owner_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_owner_grants 
  DROP CONSTRAINT app_owner_grants_grantor_id_fkey;


