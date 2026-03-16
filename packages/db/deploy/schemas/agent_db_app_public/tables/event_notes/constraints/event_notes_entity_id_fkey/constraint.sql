-- Deploy: schemas/agent_db_app_public/tables/event_notes/constraints/event_notes_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/event_notes/table
-- requires: schemas/agent_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".event_notes 
  ADD CONSTRAINT event_notes_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

