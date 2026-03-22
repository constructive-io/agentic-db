-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/alterations/alt0000006406
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/trip_places/policies/auth_del_entity_membership/policy


COMMENT ON TABLE agentic_db_app_public.trip_hiking_trails IS E'@behavior +manyToMany';

