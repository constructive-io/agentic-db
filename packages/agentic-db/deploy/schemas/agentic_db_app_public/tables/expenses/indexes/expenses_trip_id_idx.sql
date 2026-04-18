-- Deploy: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_trip_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/trip_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


CREATE INDEX expenses_trip_id_idx ON agentic_db_app_public.expenses USING BTREE ( trip_id );

