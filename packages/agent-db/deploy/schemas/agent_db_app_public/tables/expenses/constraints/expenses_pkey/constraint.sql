-- Deploy: schemas/agent_db_app_public/tables/expenses/constraints/expenses_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column


ALTER TABLE agent_db_app_public.expenses 
  ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);

