-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/indexes/app_profile_grants_grantor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/grantor_id/column


CREATE INDEX app_profile_grants_grantor_id_idx ON "agent-os-1773551593867-bac64076-profiles-public".app_profile_grants USING BTREE ( grantor_id );

