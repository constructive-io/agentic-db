-- Deploy: schemas/agentic_db_app_public/tables/trips/constraints/trips_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE agentic_db_app_public.trips 
  ADD CONSTRAINT trips_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

