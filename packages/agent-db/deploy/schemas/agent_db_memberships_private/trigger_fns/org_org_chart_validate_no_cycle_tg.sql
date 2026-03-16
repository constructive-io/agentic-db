-- Deploy: schemas/agent_db_memberships_private/trigger_fns/org_org_chart_validate_no_cycle_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema


CREATE FUNCTION "agent_db_memberships_private".org_org_chart_validate_no_cycle_tg() RETURNS TRIGGER AS $_PGFN_$

            DECLARE
                v_has_cycle boolean;
            BEGIN
                IF (NEW.parent_id IS NULL) THEN
                    RETURN NEW;
                END IF;
                
                WITH RECURSIVE ancestors AS (
                    SELECT parent_id, child_id, 1 AS depth
                    FROM "agent_db_memberships_public".org_chart_edges
                    WHERE child_id = NEW.parent_id
                        AND entity_id = NEW.entity_id
                    
                    UNION ALL
                    
                    SELECT e.parent_id, e.child_id, a.depth + 1
                    FROM ancestors a
                    JOIN "agent_db_memberships_public".org_chart_edges e 
                        ON e.child_id = a.parent_id
                        AND e.entity_id = NEW.entity_id
                    WHERE a.depth < 100
                )
                SELECT EXISTS (
                    SELECT 1 FROM ancestors WHERE parent_id = NEW.child_id
                ) INTO v_has_cycle;
                
                IF (v_has_cycle) THEN
                    RAISE EXCEPTION 'HIERARCHY_CYCLE_DETECTED: Setting % as parent of % would create a cycle',
                        NEW.parent_id, NEW.child_id;
                END IF;
                
                RETURN NEW;
            END;
        
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY INVOKER;

