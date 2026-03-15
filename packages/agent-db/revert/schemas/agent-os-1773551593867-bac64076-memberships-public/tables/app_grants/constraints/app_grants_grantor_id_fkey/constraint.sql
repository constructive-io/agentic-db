-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/constraints/app_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_grants 
  DROP CONSTRAINT app_grants_grantor_id_fkey;


