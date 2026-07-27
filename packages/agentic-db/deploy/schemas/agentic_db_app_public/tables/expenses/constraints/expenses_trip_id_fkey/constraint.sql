-- Deploy: schemas/agentic_db_app_public/tables/expenses/constraints/expenses_trip_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/expenses/table


ALTER TABLE agentic_db_app_public.expenses 
  ADD CONSTRAINT expenses_trip_id_fkey 
    FOREIGN KEY(trip_id) 
    REFERENCES agentic_db_app_public.trips (id) 
    ON DELETE SET NULL;

