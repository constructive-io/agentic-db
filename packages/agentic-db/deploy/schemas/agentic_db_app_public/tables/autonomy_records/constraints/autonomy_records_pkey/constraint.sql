-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/constraints/autonomy_records_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table


ALTER TABLE agentic_db_app_public.autonomy_records 
  ADD CONSTRAINT autonomy_records_pkey PRIMARY KEY (id);

