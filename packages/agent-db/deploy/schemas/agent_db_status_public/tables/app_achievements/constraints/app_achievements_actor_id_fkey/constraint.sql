-- Deploy: schemas/agent_db_status_public/tables/app_achievements/constraints/app_achievements_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/table


ALTER TABLE "agent_db_status_public".app_achievements 
  ADD CONSTRAINT app_achievements_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

