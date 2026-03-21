-- Deploy: schemas/agentic_db_app_public/tables/venue_images/columns/image_id/alterations/alt0000003898
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table
-- requires: schemas/agentic_db_app_public/tables/venue_images/columns/image_id/column
-- requires: schemas/agentic_db_app_public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.venue_images 
  ALTER COLUMN image_id SET NOT NULL;

