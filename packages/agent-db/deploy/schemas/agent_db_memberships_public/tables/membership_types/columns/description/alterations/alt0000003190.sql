-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/description/alterations/alt0000003190
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table
-- requires: schemas/agent_db_memberships_public/tables/membership_types/columns/description/column


ALTER TABLE "agent_db_memberships_public".membership_types 
  ALTER COLUMN description SET NOT NULL;

