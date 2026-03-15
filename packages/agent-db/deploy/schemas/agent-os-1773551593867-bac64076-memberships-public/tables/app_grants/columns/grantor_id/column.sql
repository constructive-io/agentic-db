-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/grantor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_grants 
  ADD COLUMN grantor_id uuid;

