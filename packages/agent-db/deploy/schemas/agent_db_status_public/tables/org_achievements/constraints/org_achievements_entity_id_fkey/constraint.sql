-- Deploy: schemas/agent_db_status_public/tables/org_achievements/constraints/org_achievements_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/table


ALTER TABLE "agent_db_status_public".org_achievements 
  ADD CONSTRAINT org_achievements_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

