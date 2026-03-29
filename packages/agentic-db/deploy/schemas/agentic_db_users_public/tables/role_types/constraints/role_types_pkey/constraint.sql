-- Deploy: schemas/agentic_db_users_public/tables/role_types/constraints/role_types_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/role_types/table


ALTER TABLE agentic_db_users_public.role_types 
  ADD CONSTRAINT role_types_pkey PRIMARY KEY (id);

