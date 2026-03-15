-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table


ALTER TABLE "agent_db_memberships_public".membership_types 
  ADD COLUMN name citext;

