-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000000341
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/entity_id/column


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  ALTER COLUMN entity_id SET NOT NULL;

