-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/org_org_chart_edge_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema


CREATE FUNCTION agentic_db_memberships_private.org_org_chart_edge_update_tg() RETURNS TRIGGER AS $_PGFN_$

            BEGIN
                IF (OLD.entity_id != NEW.entity_id) THEN
                    PERFORM agentic_db_memberships_private.org_rebuild_org_hierarchy_sprt(OLD.entity_id);
                END IF;
                PERFORM agentic_db_memberships_private.org_rebuild_org_hierarchy_sprt(NEW.entity_id);
                RETURN NEW;
            END;
        
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

