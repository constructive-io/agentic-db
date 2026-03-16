-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/constraints/task_contacts_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".task_contacts 
  ADD CONSTRAINT task_contacts_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agentic_db_app_public".contacts (id) 
    ON DELETE CASCADE;

