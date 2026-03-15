-- Deploy: schemas/agent_db_app_public/tables/company_images/constraints/company_images_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_images/table
-- requires: schemas/agent_db_app_public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.company_images 
  ADD CONSTRAINT company_images_pkey PRIMARY KEY (id);

